Vmdb::Gettext::Domains.add_domain(
  'ManageIQ_Providers_Hdfs',
  ManageIQ::Providers::Hdfs::Engine.root.join('locale').to_s,
  :po
)
