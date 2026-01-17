vim.filetype.add({
  extension = {
    c4 = 'likec4'
  },
  filename = {
    ['docker-compose.yml'] = 'yaml.docker-compose',
    ['docker-compose.yaml'] = 'yaml.docker-compose'
  }
})

