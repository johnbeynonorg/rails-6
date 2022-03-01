Rails.application.configure do

  config.good_job = {
    retry_on_unhandled_error: false,
    execution_mode: :external, # <= SET TO :external BECAUSE DEFAULT DEVELOPMENT IS :INLINE
    max_threads: 5,
    poll_interval: 30,
    shutdown_timeout: 25,
    enable_cron: true,
    cron: {
      demojob: {
        cron: '* * * * *',
        class: 'DemoJob'
      },
    },
    queues: '*',
  }
end