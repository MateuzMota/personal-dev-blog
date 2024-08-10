document.addEventListener('turbo:load', () => {
  const posts = document.querySelectorAll('ul > li');
  posts.forEach((element, index) => {  
    if (index === posts.length - 1) return
  
    const divider = document.createElement('div');
    divider.className = 'index__divider'
    element.appendChild(divider)
  })
})