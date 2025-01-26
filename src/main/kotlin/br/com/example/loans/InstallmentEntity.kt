package br.com.example.loans

import jakarta.persistence.*

@Entity
@Table(name = "Installment")
data class InstallmentEntity(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long? = null,

    @Column(nullable = false)
    var amount: Double,

    @Column(name = "due_date", nullable = false)
    var dueDate: Int,

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "loan_id", nullable = false)
    var loan: LoanEntity
)
