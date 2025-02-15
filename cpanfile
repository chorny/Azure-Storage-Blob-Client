requires 'Data::Dumper';
requires 'Digest::SHA';
requires 'Encode';
requires 'HTTP::Date';
requires 'HTTP::Headers';
requires 'HTTP::Request';
requires 'HTTP::Response';
requires 'HTTP::Tiny';
requires 'LWP::UserAgent';
requires 'MIME::Base64';
requires 'Moose';
requires 'Throwable::Error';
requires 'XML::LibXML';

on test => sub {
  requires 'App::Prove::Watch';
  requires 'Test::Exception';
  requires 'Test::MockTime';
  requires 'Test::Spec::Acceptance';
};

on build => sub {
  requires 'Dist::Zilla';
  requires 'Dist::Zilla::Plugin::Prereqs::FromCPANfile';
  requires 'Dist::Zilla::Plugin::VersionFromModule';
  requires 'Dist::Zilla::PluginBundle::Git';
};
