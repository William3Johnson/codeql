// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.stmt.Stmt

module Generated {
  class ContinueStmt extends Synth::TContinueStmt, Stmt {
    override string getAPrimaryQlClass() { result = "ContinueStmt" }

    string getTargetName() {
      result = Synth::convertContinueStmtToRaw(this).(Raw::ContinueStmt).getTargetName()
    }

    final predicate hasTargetName() { exists(getTargetName()) }

    Stmt getImmediateTarget() {
      result =
        Synth::convertStmtFromRaw(Synth::convertContinueStmtToRaw(this)
              .(Raw::ContinueStmt)
              .getTarget())
    }

    final Stmt getTarget() { result = getImmediateTarget().resolve() }

    final predicate hasTarget() { exists(getTarget()) }
  }
}
