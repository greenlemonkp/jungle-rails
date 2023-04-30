describe("homepage", () => {
  //go to homepage
  beforeEach(() => {
    cy.visit("http://localhost:3000");
  });

  it("There is products on the page", () => {
    cy.get('img[alt="Tangle Azolla"]').click();
    cy.url().should("include", "/products/8");
  });
});
