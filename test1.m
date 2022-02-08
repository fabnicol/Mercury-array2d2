% File: test1.m Purpose: test of library libarray2d2.
%
% This file is in the public domain.
%-----------------------------------------------------------------------------%
%
% Build command line:
%
% rm test1; mmc --link-object $PWD/libarray2d2.a --make test1
%
%-----------------------------------------------------------------------------%

:- module test1.
:- interface.

:- import_module io.

:- pred main(io::di, io::uo) is cc_multi.

%-----------------------------------------------------------------------------%

:- implementation.

:- import_module int.
:- import_module list.
:- import_module string.
:- import_module array2d.
:- import_module array2d2.
:- import_module pretty_printer.

main(!IO) :-
     Array=array2d2([[1,2,3],[4,5,6]]),
     nl(!IO),
     write_doc(list_to_doc(array2d2.lists(Array)), !IO),
     nl(!IO),
     write_doc(list_to_doc(array2d2.lists(array2d2.init(5,4, 2))), !IO),
     nl(!IO),
     write_doc(list_to_doc(array2d2.lists(array2d2.from_lists([[1,2,3], [4,5,6]]))), !IO),
     nl(!IO),
     write_doc(list_to_doc(array2d2.lists(array2d2.from_array(2,3, array([1,2,3,4,5,6])))), !IO),
     nl(!IO),
     Arr=array2d([[1,2,3], [4,5,6]]),
     ArrT=transpose_array2d(Arr),
     ArrT=array2d(_, _, ArrTFl),
     write_doc(array_to_doc(ArrTFl), !IO),
     nl(!IO),
     write_doc(list_to_doc(lists(ArrT)), !IO),
     nl(!IO),
     write_string("set: ", !IO), 
     unsafe_set(1, 2, 8, array2d2.from_array2d(array2d([[1,2,3], [4,5,6]])), Arr2),
     write_doc(list_to_doc(lists(Arr2)), !IO),
     nl(!IO),
     write_doc(list_to_doc(lists(to_array2d(array2d2([[1,2,3], [4,5,6]])))), !IO),
     nl(!IO).

