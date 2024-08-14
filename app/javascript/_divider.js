document.addEventListener('turbo:load', () => {
  if (document.URL !== `${document.location.origin}/articles`) return

  const posts = document.querySelectorAll('#index__list_of_articles > li');
  
  if (posts[0].contains(document.querySelector('.index__divider'))) return

  posts.forEach((element, index) => {  
    if (index === posts.length - 1) return
  
    const divider = document.createElement('div');
    divider.className = 'index__divider'
    element.appendChild(divider)
  })
})