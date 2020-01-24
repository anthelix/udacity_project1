CREATE TABLE "songplays" (
  "songplay_id" text,
  "start_time" date,
  "user_id" text,
  "level" text,
  "song_id" text,
  "artist_id" text,
  "session_id" integer,
  "location" text,
  "user_agent" text
);

CREATE TABLE "users" (
  "user_id" text PRIMARY KEY,
  "first_name" text,
  "last_name" text,
  "gender" text,
  "level" text
);

CREATE TABLE "songs" (
  "song_id" text PRIMARY KEY,
  "title" text,
  "artist_id" text,
  "year" integer,
  "duration" numeric
);

CREATE TABLE "artists" (
  "artist_id" text PRIMARY KEY,
  "name" text,
  "location" text,
  "latitude" numeric,
  "longitude" numeric
);

CREATE TABLE "time" (
  "start_time" date PRIMARY KEY,
  "hour" integer,
  "day" integer,
  "week" integer,
  "month" integer,
  "year" integer,
  "weekday" integer
);

ALTER TABLE "users" ADD FOREIGN KEY ("user_id") REFERENCES "songplays" ("user_id");

ALTER TABLE "songs" ADD FOREIGN KEY ("song_id") REFERENCES "songplays" ("song_id");

ALTER TABLE "artists" ADD FOREIGN KEY ("artist_id") REFERENCES "songplays" ("artist_id");

ALTER TABLE "time" ADD FOREIGN KEY ("start_time") REFERENCES "songplays" ("start_time");
