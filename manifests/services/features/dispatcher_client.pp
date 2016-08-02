class tic::services::features::dispatcher_client {

  $config_dir = "${tic::services::params::karaf_base_path}/etc"

  tic::ini_settings { "${config_dir}/org.talend.ipaas.rt.dispatcher.client.cfg":
    settings => {
      'dispatcher.input.queue'    => "ipaas.${tic::services::params::subenv_prefix}.dispatcher.input.queue",
      'dispatcher.response.queue' => "ipaas.${tic::services::params::subenv_prefix}.dispatcher.response.queue",
    }
  }

}
