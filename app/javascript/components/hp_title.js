import Typed from 'typed.js';


const loadDynamicBannerText = () => {
  new Typed('.banner-typed-text', {
    strings: ["YOUR CAREER", "YOUR SKILLS", "YOUR MOVE"],
    smartBackspace: true,
    typeSpeed: 90,
    loop: true,
  });
}

export { loadDynamicBannerText };
