opm = Opm.create(name: "1 BPM", address: "Praça Pedro Americo, s/n, Centro", zip_code: "58080100")

roles_names = %w(permissions_new permissions_create permissions_destroy permissions_edit permissions_index permissions_update opms_create opms_destroy opms_edit opms_index opms_new opms_show opms_update users_create users_destroy users_edit users_index users_new users_show users_update)
roles_names.each { |n| Role.create(name: n) }

permission = Permission.create(name: 'administrador', description: 'administrador')
permission.roles << Role.all

user = User.create(first_name: 'admin', last_name: 'admin', email: 'admin@pm.pb.gov.br',
                password: '12345678', password_confirmation: '12345678', cpf: '99999999999',
                rank: 1, military: true, inactive: false, beret_size: 42, pants_size: 42,
                t_shirt_size: 42, boot_size: 42, birth_date: DateTime.new(1989, 03, 12),
                admission_date: DateTime.new(2009, 03, 02), registration: '1111111', home_phone: '8392341234',
                mobile_phone: '83986202016', address: 'rua', complement: 'comp', neighborhood: 'Esplanada', city: 'joao pessoa',
                state: 'paraiba')

user.permissions << permission
user.roles << Role.all
