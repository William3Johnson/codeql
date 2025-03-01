// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.stmt.BraceStmt
import codeql.swift.elements.expr.Expr
import codeql.swift.elements.stmt.LabeledStmt
import codeql.swift.elements.pattern.Pattern

module Generated {
  class ForEachStmt extends Synth::TForEachStmt, LabeledStmt {
    override string getAPrimaryQlClass() { result = "ForEachStmt" }

    Pattern getImmediatePattern() {
      result =
        Synth::convertPatternFromRaw(Synth::convertForEachStmtToRaw(this)
              .(Raw::ForEachStmt)
              .getPattern())
    }

    final Pattern getPattern() { result = getImmediatePattern().resolve() }

    Expr getImmediateSequence() {
      result =
        Synth::convertExprFromRaw(Synth::convertForEachStmtToRaw(this)
              .(Raw::ForEachStmt)
              .getSequence())
    }

    final Expr getSequence() { result = getImmediateSequence().resolve() }

    Expr getImmediateWhere() {
      result =
        Synth::convertExprFromRaw(Synth::convertForEachStmtToRaw(this).(Raw::ForEachStmt).getWhere())
    }

    final Expr getWhere() { result = getImmediateWhere().resolve() }

    final predicate hasWhere() { exists(getWhere()) }

    BraceStmt getImmediateBody() {
      result =
        Synth::convertBraceStmtFromRaw(Synth::convertForEachStmtToRaw(this)
              .(Raw::ForEachStmt)
              .getBody())
    }

    final BraceStmt getBody() { result = getImmediateBody().resolve() }
  }
}
