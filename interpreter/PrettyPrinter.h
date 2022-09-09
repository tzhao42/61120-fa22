#pragma once

#include <iostream>
#include <string>

#include "AST.h"

using namespace std;

// This is where you get to define your pretty printer class, which should be
// a subtype of visitor.
class PrettyPrinter : public Visitor {};
