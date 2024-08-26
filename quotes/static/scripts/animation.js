document.addEventListener('DOMContentLoaded', () => {
    const button = document.getElementById('btn-animation');


    button.addEventListener('mousemove', (event) => {
        const rect = button.getBoundingClientRect();
        const x = event.clientX - rect.left - rect.width / 2;
        const y = event.clientY - rect.top - rect.height / 2;

        const scaleFactor = 1 + Math.sqrt(x * x + y * y) / 100;
        const maxScale = 1.5;    
        const scale = Math.min(1 + scaleFactor, maxScale);

        button.style.transform = `scale(${scale})`;
        console.log(`scale(${scale})`);
    });

    button.addEventListener('mouseleave', () => {
        button.style.transform = 'scale(1)';
    });
});

