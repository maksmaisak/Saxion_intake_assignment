/// create_config()

var config = instance_create(0, 0, obj_config);

with (config) {
    load_config();
}

return config;
