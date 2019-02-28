open Test_util

let%expect_test "test_record.beam" =
  print_ast "test_record.beam";
  [%expect {|
    (Ok (
      AbstractCode (
        ModDecl (
          (AttrFile
            (line      1)
            (file      test_record.erl)
            (file_line 1))
          (AttrMod
            (line        1)
            (module_name test_record))
          (DeclRecord
            (line 4)
            (fields (
              (RecordField
                (line       4)
                (field_name a)
                (ty           ())
                (default_expr ()))
              (RecordField
                (line       5)
                (field_name b)
                (ty ())
                (default_expr ((
                  ExprLit (
                    lit (
                      LitInteger
                      (line    5)
                      (integer 42)))))))
              (RecordField
                (line       6)
                (field_name c)
                (ty ((
                  TyPredef
                  (line 6)
                  (name string)
                  (args ()))))
                (default_expr ()))
              (RecordField
                (line       7)
                (field_name d)
                (ty ((
                  TyPredef
                  (line 7)
                  (name integer)
                  (args ()))))
                (default_expr ((
                  ExprLit (
                    lit (
                      LitInteger
                      (line    7)
                      (integer 57))))))))))
          (AttrExport
            (line 9)
            (function_arity_list (
              (f 0)
              (g 1))))
          (DeclFun
            (line          11)
            (function_name f)
            (arity         0)
            (clauses ((
              ClsFun
              (line 11)
              (patterns       ())
              (guard_sequence ())
              (body (
                ExprBody (
                  exprs (
                    (ExprMatch
                      (line 12)
                      (pattern (
                        PatVar
                        (line 12)
                        (id   R)))
                      (body (
                        ExprRecord
                        (line 12)
                        (name r)
                        (record_fields (
                          (12 a (
                            ExprLit (
                              lit (
                                LitInteger
                                (line    12)
                                (integer 3)))))
                          (12 c (
                            ExprLit (
                              lit (
                                LitString
                                (line 12)
                                (str  hello))))))))))
                    (ExprMatch
                      (line 13)
                      (pattern (PatUniversal (line 13)))
                      (body (
                        ExprRecordFieldAccess
                        (line 13)
                        (expr (
                          ExprVar
                          (line 13)
                          (id   R)))
                        (name       r)
                        (field_name c))))
                    (ExprMatch
                      (line 14)
                      (pattern (
                        PatVar
                        (line 14)
                        (id   Index)))
                      (body (
                        ExprRecordFieldIndex
                        (line       14)
                        (name       r)
                        (field_name b))))
                    (ExprRecordUpdate
                      (line 15)
                      (expr (
                        ExprVar
                        (line 15)
                        (id   R)))
                      (name r)
                      (update_fields (
                        (15 a (
                          ExprLit (
                            lit (
                              LitInteger
                              (line    15)
                              (integer 100)))))
                        (15 c (
                          ExprLit (
                            lit (
                              LitString
                              (line 15)
                              (str  hoge))))))))))))))))
          (DeclFun
            (line          17)
            (function_name g)
            (arity         1)
            (clauses ((
              ClsFun
              (line 17)
              (patterns ((
                PatVar
                (line 17)
                (id   R))))
              (guard_sequence ())
              (body (
                ExprBody (
                  exprs (
                    (ExprMatch
                      (line 18)
                      (pattern (PatUniversal (line 18)))
                      (body (
                        ExprCase
                        (line 19)
                        (expr (
                          ExprVar
                          (line 19)
                          (id   R)))
                        (clauses (
                          (ClsCase
                            (line 20)
                            (pattern (PatUniversal (line 20)))
                            (guard_sequence ((
                              GuardSeq (
                                guards ((
                                  Guard (
                                    guard_tests ((
                                      GuardTestRecord
                                      (line 20)
                                      (name r)
                                      (record_fields (
                                        (20
                                          (AtomWildcardAtom a)
                                          (GuardTestLit (
                                            lit (
                                              LitAtom
                                              (line 20)
                                              (atom true)))))
                                        (20 AtomWildcardWildcard (
                                          GuardTestLit (
                                            lit (
                                              LitInteger
                                              (line    20)
                                              (integer 111))))))))))))))))
                            (body (
                              ExprBody (
                                exprs ((
                                  ExprLit (
                                    lit (
                                      LitAtom
                                      (line 20)
                                      (atom foo)))))))))
                          (ClsCase
                            (line 21)
                            (pattern (PatUniversal (line 21)))
                            (guard_sequence ((
                              GuardSeq (
                                guards ((
                                  Guard (
                                    guard_tests ((
                                      GuardTestRecordFieldAccess
                                      (line 21)
                                      (record (
                                        GuardTestVar
                                        (line 21)
                                        (id   R)))
                                      (name       r)
                                      (field_name b))))))))))
                            (body (
                              ExprBody (
                                exprs ((
                                  ExprLit (
                                    lit (
                                      LitAtom
                                      (line 21)
                                      (atom bar)))))))))
                          (ClsCase
                            (line 22)
                            (pattern (PatUniversal (line 22)))
                            (guard_sequence ((
                              GuardSeq (
                                guards ((
                                  Guard (
                                    guard_tests ((
                                      GuardTestRecordFieldIndex
                                      (line       22)
                                      (name       r)
                                      (field_name c))))))))))
                            (body (
                              ExprBody (
                                exprs ((
                                  ExprLit (
                                    lit (
                                      LitAtom
                                      (line 22)
                                      (atom baz))))))))))))))
                    (ExprLit (
                      lit (
                        LitAtom
                        (line 24)
                        (atom ok))))))))))))
          FormEof)))) |}]
