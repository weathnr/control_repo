class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.nrw.vm':}
  dockeragent::node {'db.nrw.vm':}
}
