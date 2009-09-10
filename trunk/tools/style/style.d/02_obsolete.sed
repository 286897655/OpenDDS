#
# $Id$
#

# Strip leading global specifiers on known namespaces.
s/^::\(ACE\)/\1/
s/\([ (,;]\{1,\}\)::\(ACE\)/\1\2/g

s/^::\(CORBA\)/\1/
s/\([ (,;]\{1,\}\)::\(CORBA\)/\1\2/g

s/^::\(TAO\)/\1/
s/\([ (,;]\{1,\}\)::\(TAO\)/\1\2/g

s/^::\(DDS\)/\1/
s/\([ (,;]\{1,\}\)::\(DDS\)/\1\2/g

s/^::\(OpenDDS\)/\1/
s/\([ (,;]\{1,\}\)::\(OpenDDS\)/\1\2/g

# Replace obsolete uses of void for empty parameter lists.
# NOTE: This may break C-style casts.
s/\([^ ]\)(void)/\1()/

# Strip trailing spaces from known macros.
s/\(ACE_THROW_SPEC\) \{1,\}/\1/g
