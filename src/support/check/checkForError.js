module.exports = (expectedError) => {
    let element = '.error';
    let command = 'getValue';

    if (browser.getAttribute(element, 'value') === null) {
        command = 'getText';
    }

    const text = browser[command](element);
    expect(text).to.contain(expectedError, 'expected "' + text + '" to contain "' + expectedError + '"');
};
