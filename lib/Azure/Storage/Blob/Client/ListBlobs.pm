package Azure::Storage::Blob::Client::ListBlobs;
use Moose;
use Azure::Storage::Blob::Client::Meta::Attribute::Custom::Trait::CallParameter;

has 'endpoint' => (is => 'ro', init_arg => undef, lazy => 1, default => sub {
  my $self = shift;
  return sprintf(
    'https://%s.blob.core.windows.net/%s?restype=container&comp=list',
    $self->account_name,
    $self->container,
  );
});
has 'method' => (is => 'ro', init_arg => undef, default => 'GET');

with 'Azure::Storage::Blob::Client::Call';

has container => (is => 'ro', isa => 'Str', required => 1);
has account_name => (is => 'ro', isa => 'Str', required => 1);
has account_key => (is => 'ro', isa => 'Str', required => 1);
has prefix => (is => 'ro', isa => 'Str', traits => ['CallParameter'], required => 1);

__PACKAGE__->meta->make_immutable();

1;
