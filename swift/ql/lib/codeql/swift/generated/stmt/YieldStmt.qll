// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.Expr
import codeql.swift.elements.stmt.Stmt

module Generated {
  class YieldStmt extends Synth::TYieldStmt, Stmt {
    override string getAPrimaryQlClass() { result = "YieldStmt" }

    Expr getImmediateResult(int index) {
      result =
        Synth::convertExprFromRaw(Synth::convertYieldStmtToRaw(this)
              .(Raw::YieldStmt)
              .getResult(index))
    }

    final Expr getResult(int index) { result = getImmediateResult(index).resolve() }

    final Expr getAResult() { result = getResult(_) }

    final int getNumberOfResults() { result = count(getAResult()) }
  }
}
