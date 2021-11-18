#include <unistd.h>
#include <string.h>
#include <iostream>
#include <vector>
#include <sstream>
#include <sys/wait.h>
#include <iomanip>
#include "Commands.h"
#include <unistd.h>

using namespace std;

#if 0
#define FUNC_ENTRY()  \
  cout << __PRETTY_FUNCTION__ << " --> " << endl;

#define FUNC_EXIT()  \
  cout << __PRETTY_FUNCTION__ << " <-- " << endl;
#else
#define FUNC_ENTRY()
#define FUNC_EXIT()
#define EMPTY_STR  "";
#endif


string _ltrim(const std::string& s)
{
  size_t start = s.find_first_not_of(WHITESPACE);
  return (start == std::string::npos) ? "" : s.substr(start);
}

string _rtrim(const std::string& s)
{
  size_t end = s.find_last_not_of(WHITESPACE);
  return (end == std::string::npos) ? "" : s.substr(0, end + 1);
}

string _trim(const std::string& s)
{
  return _rtrim(_ltrim(s));
}

/**
 * ************************ getSecondWord ***********************
 */
 static inline string getSecondWord(string cmd_line)
{
    //case: no second word in cmd_line
    if (cmd_line.compare("chprompt") == 0) return EMPTY_STR;
    // other cases:
    string secondWord = cmd_line.substr(cmd_line.find_first_of(" "), cmd_line.find_first_of("\n"));
    secondWord = _trim(secondWord);
//    if (secondWord.empty())
//    {
//        return secondWord;
//    }
    return secondWord.substr(0, secondWord.find_first_of(" \n"));
}

int _parseCommandLine(const char* cmd_line, char** args) {
  FUNC_ENTRY()
  int i = 0;
  std::istringstream iss(_trim(string(cmd_line)).c_str());
  for(std::string s; iss >> s; ) {
    args[i] = (char*)malloc(s.length()+1);
    memset(args[i], 0, s.length()+1);
    strcpy(args[i], s.c_str());
    args[++i] = NULL;
  }
  return i;

  FUNC_EXIT()
}

bool _isBackgroundComamnd(const char* cmd_line) {
  const string str(cmd_line);
  return str[str.find_last_not_of(WHITESPACE)] == '&';
}

void _removeBackgroundSign(char* cmd_line) {
  const string str(cmd_line);
  // find last character other than spaces
  unsigned int idx = str.find_last_not_of(WHITESPACE);
  // if all characters are spaces then return
  if (idx == string::npos) {
    return;
  }
  // if the command line does not end with & then return
  if (cmd_line[idx] != '&') {
    return;
  }
  // replace the & (background sign) with space and then remove all tailing spaces.
  cmd_line[idx] = ' ';
  // truncate the command line string up to the last non-space character
  cmd_line[str.find_last_not_of(WHITESPACE, idx) + 1] = 0;
}

// TODO: Add your implementation for classes in Commands.h


/**
 * ======================== GetCurrDirCommand implementation =====================
 */
void GetCurrDirCommand::execute() {
    char* curr_location = nullptr;
    size_t size = 80;
    cout <<  getcwd(curr_location, size) << endl;
}

/**
 * ======================== ShowPidCommand implementation =====================
 */
void ShowPidCommand::execute() {
    pid_t curr_pid;
    curr_pid = getpid();
    cout << curr_pid << endl;
}

//SmallShell c'tor
SmallShell::SmallShell() {
// TODO: add your implementation
s_prompt = "smash> ";
}

SmallShell::~SmallShell() {
// TODO: add your implementation
}

/**
* Creates and returns a pointer to Command class which matches the given command line (cmd_line)
*/
Command * SmallShell::CreateCommand(const char* cmd_line) {
    string cmd_s = _trim(string(cmd_line));
    string firstWord = cmd_s.substr(0, cmd_s.find_first_of(" \n"));

    if (firstWord.compare("pwd") == 0) {
        return new GetCurrDirCommand(cmd_line);
    }
    else if (firstWord.compare("showpid") == 0) {
        return new ShowPidCommand(cmd_line);
    }
    if (firstWord.compare("chprompt") == 0)
    {
       string new_prompt = getSecondWord(cmd_s);
       if (new_prompt.empty())  //todo: fix
       {
           this->s_prompt = "smash> ";
           return new ChangePromptCommand(new_prompt);
       }
       else
       {
           this->s_prompt = new_prompt+"> ";

           return new ChangePromptCommand(new_prompt);
       }
    }

  return nullptr;
}

void SmallShell::executeCommand(const char *cmd_line) {
  // TODO: Add your implementation here
  // for example:
   Command* cmd = CreateCommand(cmd_line);
   cmd->execute();
  // Please note that you must fork smash process for some commands (e.g., external commands....)
}
/// ============================================================================================================

BuiltInCommand::BuiltInCommand(const char *cmd_line) :
Command(cmd_line)
{}

Command::Command(const char *cmd_line):
prompt(prompt)
{}

ChangePromptCommand::ChangePromptCommand(const char *cmd_line) :
BuiltInCommand(cmd_line)
{}

