(define-fungible-token magic-ms)

(define-constant contract-owner tx-sender)
(define-constant err-owner-only (err u100))

;; Custom function to mint tokens, only available to the contract owner
(define-public (mint (amount-unit) (who principal))
    (begin 
    (asserts! (is-eq tx-sender contract-owner) err-owner-only)
    (ft-mint? magic-ms amount who)
  )
)