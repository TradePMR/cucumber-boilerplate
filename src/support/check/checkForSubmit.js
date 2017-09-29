module.exports = () => {
    expect(browser.elements('#submit').value.length).to.equal(1);
};
