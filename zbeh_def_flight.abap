implementation managed;

define behavior for zcds_flight_master
persistent table zflight_master
lock master
{
  create;
  update;
  delete;
}
