function getRandomColor() {
    const letters = '0123456789ABCDEF';
    return '#' + Array.from({ length: 6 }, () => {
        const randomValue = window.crypto.getRandomValues(new Uint8Array(1))[0];
        return letters[Math.floor(randomValue / 256 * letters.length)];
    }).join('');
}