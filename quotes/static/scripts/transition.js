document.addEventListener('DOMContentLoaded', () => {

    const element = /results/.test(window.location.href) 
        ? '.quote-result-page'
        : /detail/.test(window.location.href)
            ? '.detail-page-container'
            :'.homepage-container';
            
            document.querySelector(element).classList.add('loaded');
});