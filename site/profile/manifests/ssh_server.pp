
class profile::ssh_server {
  package {'openssh-server':
    ensure  =>  present,
  }
  service {'sshd':
    ensure  =>  'running',
    enable  =>  'true',
  }
  ssh_authorized_key {'root@master01.nrw.vm':
    ensure  =>  present,
    user    =>  'root',
    type    =>  'ssh-rsa',
    key     =>  'AAAAB3NzaC1yc2EAAAADAQABAAABAQC3Jq2F8LRTkwOZjWt5AKIgVNBBHZizrqRS7lE6zjzZiSzAixQHXcsm0jahftSVXVkB1w4otvP3s3dwt3J5kbVwzLLj52ppvqFQh49mn9AQ06iUyaebt7rXdmB2pKsv6VusQ43YBtyqbIT9BTPU7O9SZdGxczTKgzKm+/9HuGmEld1YI2cRekGqejBaT26hDF8e47UlWQrofoOS/Aa/cJB5GsgIWmwcaQ6OxFAIVMP5fHXDJrkEAXHu/xuXvYiA1ljOgJzr+k4ewkla36AeihuGPx+aeqaVJ+Gs/KI0zpb6fsJyx81oAOeRoDF/fVGrKQn+EoigWtmrzkYMfpl5q0oj',
  }
}
