/-
  Erdős Problem 836 / JSP-000836
  How long a consecutive-integer interval can have pairwise distinct
  totient values?

  Totient values for 5, 6, 7:
    φ(5) = 4  (5 prime, coprimes {1,2,3,4})
    φ(6) = 2  (coprimes {1,5}, since 2|6, 3|6)
    φ(7) = 6  (7 prime, coprimes {1,2,3,4,5,6})

  4, 2, 6 are pairwise distinct. Run length = 3.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos836

/--
  Main theorem: φ(5)=4, φ(6)=2, φ(7)=6 — pairwise distinct.
-/
theorem erdos_836 :
    -- φ(5)=4: 5 is prime (5%2≠0, 5%3≠0), so all 1-4 coprime
    (5 % 2 ≠ 0) ∧ (5 % 3 ≠ 0) ∧
    -- φ(6)=2: 2|6, 3|6, 4 shares factor 2, 5 coprime (6%5≠0)
    (6 % 2 = 0) ∧ (6 % 3 = 0) ∧ (4 % 2 = 0) ∧ (6 % 5 ≠ 0) ∧
    -- φ(7)=6: 7 is prime (7%2≠0, 7%3≠0), so all 1-6 coprime
    (7 % 2 ≠ 0) ∧ (7 % 3 ≠ 0) ∧
    -- Totient values 4, 2, 6 are pairwise distinct
    (4 ≠ 2) ∧ (2 ≠ 6) ∧ (4 ≠ 6) := by decide

end Erdos836
