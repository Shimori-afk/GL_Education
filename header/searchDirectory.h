#ifndef searchDirectory_H
#define searchDirectory_H


#include <string>
#include <vector>
#include <dirent.h>

using namespace std;

vector<string> FindInDirectory(string directory, string& file_name);




#endif