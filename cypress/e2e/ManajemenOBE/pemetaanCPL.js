import { When } from "@badeball/cypress-cucumber-preprocessor"

When ("Admin login siakad internal release", () => {
    cy.visit("https://internalrelease.siakadcloud.com/")
    cy.get("#email").type('ardi')
    cy.get("#password").type('password')
    cy.get(".btn").click()
})

When ("Admin menuju halaman manajemen OBE", ()=> {
    cy.visit("https://internalrelease.siakadcloud.com/siakad/ms_obe")

    // Ubah tahun kurikulum 
    cy.get('#select2-kurikulum-container').type('2023{enter}')
})

When ("Admin masuk ke detail manajemen obe", () => {
    cy.get('.table').contains('Teknik Informatika').nextUntil()
        .should('have.length', 6).find('.btn').click()
})

When ("Admin pilih menu {string}", (menu) => {
    const menuMap = {
        "profil lulusan": "Profil Lulusan",
        "manajemen obe": "Manajemen OBE",
        "pemetaan pl - cpl": "Pemetaan PL -> CPL",
        "pemetaan cpl - mk": "Pemetaan CPL -> MK"
      }
      
      const menuText = menuMap[menu]
      
      if (menuText) {
        cy.get('.profile').contains(menuText).click()
        
        if (menuText.includes("Pemetaan")) {
          cy.get('.btn').contains("Edit Pemetaan").click()
        }
      }      
})

When ("Admin melakukan checklist secara random", () => {
    // // Random Checklist 
    // cy.get('.icheckbox_minimal').each(($checkbox) => {
    //     const shouldCheck = Math.random() < 0.5 // Random true or false
        
    //     if (shouldCheck) {
    //         cy.wrap($checkbox).click() // Simulate clicking the checkbox
    //     }
    // })
    
    // // Random Checklist dengan pola yang ditentukan
    // cy.get('.icheckbox_minimal').each(($checkbox, index) => {
    //     const pattern = [true, false, true, true, false] // Pola checklist yang diinginkan
        
    //     const shouldCheck = pattern[index % pattern.length] // Menggunakan pola berulang
        
    //     if (shouldCheck) {
    //         cy.wrap($checkbox).click() // Simulasi klik pada checkbox
    //     }
    // })

    // // Random Checklist selang seling
    // cy.get('.icheckbox_minimal').each(($checkbox, index) => {
    //     const isEven = (index + 1) % 2 === 0 // Cek apakah nomor index adalah genap
        
    //     if (isEven) {
    //         cy.wrap($checkbox).click() // Simulasi klik pada checkbox
    //     }
    // })
    
    // Random Checklist dengan jarak yang ditentukan
    const K = 3 // Setiap 3 nomor checkbox akan dicentang

    cy.get('.icheckbox_minimal').each(($checkbox, index) => {
        const shouldCheck = (index + 1) % K === 0 // Cek apakah nomor index adalah kelipatan K
        
        if (shouldCheck) {
            cy.wrap($checkbox).click() // Klik pada checkbox
        }
    })
})