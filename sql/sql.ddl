-- public.t_user definition

-- Drop table

-- DROP TABLE public.t_user;

CREATE TABLE public.t_user (
	id_user varchar NOT NULL,
	CONSTRAINT t_user_pk PRIMARY KEY (id_user)
);


-- public.t_ad definition

-- Drop table

-- DROP TABLE public.t_ad;

CREATE TABLE public.t_ad (
	id_ad varchar NOT NULL,
	id_user varchar NULL,
	title varchar NULL,
	description varchar NULL,
	price float4 NULL,
	date_created date NULL,
	date_changed date NULL,
	CONSTRAINT t_ad_pk PRIMARY KEY (id_ad)
);


-- public.t_ad foreign keys

ALTER TABLE public.t_ad ADD CONSTRAINT t_ad_fk FOREIGN KEY (id_user) REFERENCES t_user(id_user);


-- public.t_photo definition

-- Drop table

-- DROP TABLE public.t_photo;

CREATE TABLE public.t_photo (
	id_photo varchar NOT NULL,
	id_ad varchar NULL,
	url_small varchar NULL,
	url_medium varchar NULL,
	url_large varchar NULL,
	url_original varchar NULL,
	CONSTRAINT t_photo_pk PRIMARY KEY (id_photo)
);


-- public.t_photo foreign keys

ALTER TABLE public.t_photo ADD CONSTRAINT t_photo_fk FOREIGN KEY (id_ad) REFERENCES t_ad(id_ad);
