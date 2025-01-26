package br.com.example.loans

import jakarta.persistence.*

@Entity
@Table(name = "Loan")
data class LoanEntity(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long? = null,

    @Column(nullable = false)
    var amount: Double,

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "person_id", nullable = false)
    var person: PersonEntity,

    @OneToMany(mappedBy = "loan", cascade = [CascadeType.ALL], fetch = FetchType.LAZY, targetEntity = InstallmentEntity::class)
    var installments: Set<InstallmentEntity> = emptySet()
)