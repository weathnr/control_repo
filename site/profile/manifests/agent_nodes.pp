class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.nrw.vm':}
  dockeragent::node {'db.nrw.vm':}
  dockeragent::node {'minetest.nrw.vm':}
  host {'web.nrw.vm':
    ensure  =>  present,
    ip      =>  '172.18.0.2',
  }
  host {'db.nrw.vm':
    ensure  =>  present,
    ip      =>  '172.18.0.3',
  }
}
