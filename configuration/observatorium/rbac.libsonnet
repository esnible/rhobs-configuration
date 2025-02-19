{
  roles: [
    {
      name: 'cnv-qe-metrics-read',
      resources: [
        'metrics',
      ],
      tenants: [
        'cnvqe',
      ],
      permissions: [
        'read',
      ],
    },
    {
      name: 'cnv-qe-metrics-write',
      resources: [
        'metrics',
      ],
      tenants: [
        'cnvqe',
      ],
      permissions: [
        'write',
      ],
    },
    {
      name: 'rhods-metrics-read',
      resources: [
        'metrics',
      ],
      tenants: [
        'rhods',
      ],
      permissions: [
        'read',
      ],
    },
    {
      name: 'rhods-metrics-write',
      resources: [
        'metrics',
      ],
      tenants: [
        'rhods',
      ],
      permissions: [
        'write',
      ],
    },
    {
      name: 'rhods-logs-read',
      resources: [
        'logs',
      ],
      tenants: [
        'rhods',
      ],
      permissions: [
        'read',
      ],
    },
    {
      name: 'rhods-logs-write',
      resources: [
        'logs',
      ],
      tenants: [
        'rhods',
      ],
      permissions: [
        'write',
      ],
    },
    {
      name: 'rhacs-metrics-read',
      resources: [
        'metrics',
      ],
      tenants: [
        'rhacs',
      ],
      permissions: [
        'read',
      ],
    },
    {
      name: 'rhacs-metrics-write',
      resources: [
        'metrics',
      ],
      tenants: [
        'rhacs',
      ],
      permissions: [
        'write',
      ],
    },
    {
      name: 'rhacs-logs-write',
      resources: [
        'logs',
      ],
      tenants: [
        'rhacs',
      ],
      permissions: [
        'write',
      ],
    },
    {
      name: 'rhacs-logs-read',
      resources: [
        'logs',
      ],
      tenants: [
        'rhacs',
      ],
      permissions: [
        'read',
      ],
    },
    {
      name: 'rhobs-read',
      resources: [
        'metrics',
        'logs',
        'traces',
      ],
      tenants: [
        'rhobs',
      ],
      permissions: [
        'read',
      ],
    },
    {
      name: 'rhobs-write',
      resources: [
        'metrics',
        'logs',
        'traces',
      ],
      tenants: [
        'rhobs',
      ],
      permissions: [
        'write',
      ],
    },
    {
      name: 'telemeter-write',
      resources: [
        'metrics',
      ],
      tenants: [
        'telemeter',
      ],
      permissions: [
        'write',
      ],
    },
    {
      name: 'telemeter-read',
      resources: [
        'metrics',
      ],
      tenants: [
        'telemeter',
      ],
      permissions: [
        'read',
      ],
    },
    {
      name: 'psiocp-read',
      resources: [
        'metrics',
      ],
      tenants: [
        'psiocp',
      ],
      permissions: [
        'read',
      ],
    },
    {
      name: 'psiocp-write',
      resources: [
        'metrics',
      ],
      tenants: [
        'psiocp',
      ],
      permissions: [
        'write',
      ],
    },
    {
      name: 'rhoc-metrics-read',
      resources: [
        'metrics',
      ],
      tenants: [
        'rhoc',
      ],
      permissions: [
        'read',
      ],
    },
    {
      name: 'rhoc-metrics-write',
      resources: [
        'metrics',
      ],
      tenants: [
        'rhoc',
      ],
      permissions: [
        'write',
      ],
    },
    {
      name: 'odfms-metrics-read',
      resources: [
        'metrics',
      ],
      tenants: [
        'odfms',
      ],
      permissions: [
        'read',
      ],
    },
    {
      name: 'odfms-metrics-write',
      resources: [
        'metrics',
      ],
      tenants: [
        'odfms',
      ],
      permissions: [
        'write',
      ],
    },
  ],
  roleBindings: [
    {
      name: 'cnv-qe-metrics',
      roles: [
        'cnv-qe-metrics-write',
        'cnv-qe-metrics-read',
      ],
      subjects: [
        {
          name: 'service-account-observatorium-cnv-qe-staging',
          kind: 'user',
        },
        {
          name: 'service-account-observatorium-cnv-qe',
          kind: 'user',
        },
      ],
    },
    {
      name: 'rhods-metrics',
      roles: [
        'rhods-metrics-write',
        'rhods-metrics-read',
      ],
      subjects: [
        {
          name: 'service-account-observatorium-rhods-isv-staging',
          kind: 'user',
        },
      ],
    },
    {
      name: 'rhacs-metrics',
      roles: [
        'rhacs-metrics-write',
        'rhacs-metrics-read',
      ],
      subjects: [
        {
          name: 'service-account-observatorium-rhacs-metrics-staging',
          kind: 'user',
        },
        {
          name: 'service-account-observatorium-rhacs-metrics',
          kind: 'user',
        },
      ],
    },
    {
      name: 'rhacs-metrics-grafana',
      roles: [
        'rhacs-metrics-read',
      ],
      subjects: [
        {
          name: 'service-account-observatorium-rhacs-grafana-staging',
          kind: 'user',
        },
        {
          name: 'service-account-observatorium-rhacs-grafana',
          kind: 'user',
        },
      ],
    },
    {
      name: 'rhacs-logs',
      roles: [
        'rhacs-logs-read',
        'rhacs-logs-write',
      ],
      subjects: [
        {
          name: 'service-account-observatorium-rhacs-logs-staging',
          kind: 'user',
        },
        {
          name: 'service-account-observatorium-rhacs-logs',
          kind: 'user',
        },
      ],
    },
    {
      name: 'rhobs',
      roles: [
        'rhobs-write',
        'rhobs-read',
      ],
      subjects: [
        {
          name: 'service-account-observatorium-rhobs-testing',
          kind: 'user',
        },
        {
          name: 'service-account-observatorium-rhobs-staging',
          kind: 'user',
        },
        {
          name: 'service-account-observatorium-rhobs',
          kind: 'user',
        },
      ],
    },
    {
      name: 'rhobs-mst',
      roles: [
        'rhobs-write',
        'rhobs-read',
      ],
      subjects: [
        {
          name: 'service-account-observatorium-rhobs-mst-staging',
          kind: 'user',
        },
        {
          name: 'service-account-observatorium-rhobs-mst',
          kind: 'user',
        },
      ],
    },
    {
      name: 'rhobs-admin',
      roles: [
        'telemeter-read',
        'rhobs-read',
      ],
      subjects: [
        {
          name: 'team-monitoring@redhat.com',
          kind: 'group',
        },
      ],
    },
    {
      name: 'telemeter-server',
      roles: [
        'telemeter-write',
        'telemeter-read',
      ],
      subjects: [
        {
          name: 'service-account-telemeter-service-staging',
          kind: 'user',
        },
        {
          name: 'service-account-telemeter-service',
          kind: 'user',
        },
      ],
    },
    {
      name: 'subwatch',
      roles: [
        'telemeter-read',
      ],
      subjects: [
        {
          name: 'service-account-observatorium-subwatch-staging',
          kind: 'user',
        },
        {
          name: 'service-account-observatorium-subwatch',
          kind: 'user',
        },
      ],
    },
    {
      name: 'psiocp',
      roles: [
        'psiocp-write',
        'psiocp-read',
      ],
      subjects: [
        {
          name: 'service-account-observatorium-psiocp-staging',
          kind: 'user',
        },
      ],
    },
    {
      name: 'rhoc',
      roles: [
        'rhoc-metrics-read',
        'rhoc-metrics-write',
      ],
      subjects: [
        {
          name: 'service-account-observatorium-rhoc-staging',
          kind: 'user',
        },
      ],
    },
    {
      name: 'odfms',
      roles: [
        'odfms-metrics-read',
        'odfms-metrics-write',
      ],
      subjects: [
        {
          name: 'service-account-observatorium-odfms-staging',
          kind: 'user',
        },
      ],
    },
  ],
}
