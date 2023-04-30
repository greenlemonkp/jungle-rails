describe("homepage", () => {
  //go to homepage
  beforeEach(() => {
    cy.visit("http://localhost:3000");
  });

  it("should add an item to the cart and increase the cart count by one", () => {
    const productName = "Sweet Hops";

    cy.get(".products")
      .contatins(productName)
      .parents("article")
      .within(() => {
        cy.get("button").click({ force: true });
      });

    cy.get(".navbar-nav")
      .contatins("My Cart")
      .should("have.text", "\n My Cart (1) ");
  });
});
