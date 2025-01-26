package br.com.example.loans

import jakarta.persistence.*



@Entity
@Table(name = "Person")
data class PersonEntity(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long? = null,

    @Column(nullable = false)
    var name: String,

    @OneToMany(mappedBy = "person", cascade = [CascadeType.ALL], fetch = FetchType.LAZY, targetEntity = LoanEntity::class)
    var loans: Set<LoanEntity> = emptySet()
)