CREATE TABLE IF NOT EXISTS `ai_ems_telemetry` (
    `status` text DEFAULT NULL,
    `counter` int(11) DEFAULT NULL
);

INSERT INTO `ai_ems_telemetry` (`status`, `counter`) VALUES
    ('started', 0),
    ('success', 0),
    ('success-forced-stuck', 0),
    ('success-forced-checkin', 0),
    ('timedout', 0),
    ('abandoned', 0),
    ('abandoned-dead', 0);
