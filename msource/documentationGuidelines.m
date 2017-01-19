%> @file  documentationGuidelines.m
%> @brief Documentation guidelines to extract documentation using Doxygen
%======================================================================
%> @mainpage Documentation guidelines
%>
%> @section intro Introduction
%>
%> The @b doxygen software (http://www.doxygen.org) allows you to extract code comments
%> from your code to automatically generate documentation.
%>
%> Doxygen builds automatically a documentation based on C++ components (classes,
%> functions, structs, variables,...) using syntaxic analysis. Doxygen extends this
%> documentation by extracting special comments.
%>
%> @section matlabComments Extract code comments from Matlab files (.m files)
%>
%> Matlab code is not supported nativly by Doxygen : a perl filter allowing the conversion
%> from .m to C++ has been developped, the @c m2cpp.pl script.
%>
%> This filter extracts only :
%> - lines beginning with <b>%></b> :
%>   these lines are converted into C++ comments, ie beginning by ///
%> - lines beginning with the @c function keyword :
%>   these lines are converted into C++ functions
%> - lines beginning with the @c classdef keyword :
%>   these lines are converted into C++ classes
%> - lines beginning with the @c properties keyword :
%>   these lines are converted into C++ properties
%> - lines beginning with the @c enumeration keyword :
%>   these lines are converted into C++ enum
%> - lines beginning with the @c events keyword :
%>   these lines are converted into C++ enum Events
%>   @note for enumeration definition : this script only supports the following declaration :
%>   @code
%>   enumeration
%>     first_enum
%>     second_enum
%>   end
%>   @endcode
%>   This one is not yet supported :
%>   @code
%>   enumeration
%>     first_enum, second_enum
%>   end
%>   @endcode
%>   The file classDocumentationExample.m provides an example of enumeration definition
%>   with comments extracted by Doxygen.
%>
%> .
%>
%> See README.md if you want more details about how to make this script work.
%>
%> @attention Each line belonging to the doxygen documentation must begin with <b>%></b> .
%>
%> @par Example
%>
%>@code
%>% Matlab comment ignored by doxygen
%>%> comment analyzed by doxygen
%>@endcode
%> @attention Doxygen keyword have to begin by @b @, for example @@b to bold the text (the use of \ instead of @ is not supported)
%>
%>@section funcDecr Function description
%> The keyword @b @@param and @b @@retval will be used to describe the input and
%> output parameters of a function.
%>
%> For function description, the description should follow the following presentation :
%>
%>@verbatim
%>% ======================================================================
%>%> @brief Brief description of the function
%>%>
%>%> More detailed description.
%>%>
%>%> @param arg1 First argument
%>%> @param arg2 Second argument
%>%>
%>%> @retval out1 return value for the first output variable
%>%> @retval out2 return value for the second output variable
%>% ======================================================================
%>[out1, out2] = function( arg1, arg2)
%>  out1 = arg2;
%>  out2 = arg1;
%>end
%>@endverbatim
%>
%>
%> @section classDecr Class description
%>
%> For class description, the following description can be used :
%>
%>@verbatim
%>% ======================================================================
%>%> @brief Brief description of the class
%>%>
%>%> More detailed description of the class
%>%>
%>% ======================================================================
%>@endverbatim
%>
%>

%======================================================================
%> @brief Brief description of the function
%>
%> More detailed description.
%>
%> @param arg1 First argument
%> @param arg2 Second argument
%>
%> @retval out1 return value for the first output variable
%> @retval out2 return value for the second output variable
%======================================================================
function [out1, out2] = test(arg1, arg2)
end
