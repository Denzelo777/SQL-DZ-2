create table if not exists Genre (
    genre_id SERIAL primary key,
    genre_name VARCHAR(30)
);

create table if not exists Executor (
    executor_id SERIAL primary key,
    name_alias VARCHAR(30)
);

create table if not exists executor_genre (
    executor_genre_id SERIAL primary key,
    executor INTEGER not null references Executor(executor_id),
    genre INTEGER not null references Genre(genre_id)
);

create table if not exists Album (
    album_id SERIAL primary key,
    album_name VARCHAR(30),
    year_of_release DATE
);

create table if not exists executor_album (
    executor_album_id SERIAL primary key,
    executor INTEGER not null references Executor(executor_id),
    album INTEGER not null references Album(album_id)
);

create table if not exists Track (
    track_id SERIAL primary key,
    track_name VARCHAR(30),
    duration TIME,
    album INTEGER not null references Album(album_id)
);

create table if not exists Collection (
    collection_id SERIAL primary key,
    collection_name VARCHAR(30),
    year_of_release DATE
);

create table if not exists track_album (
    rack_album_id SERIAL primary key,
    track INTEGER not null references Track(track_id),
    collection INTEGER not null references Collection(collection_id)
);