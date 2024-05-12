CREATE TABLE files (
    id SERIAL PRIMARY KEY,
    original_filename VARCHAR(255) NOT NULL UNIQUE,
    file_size BIGINT NOT NULL,
    content_type VARCHAR(50),
    upload_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified BIGINT,
    encryption_key_id UUID,
    file_checksum VARCHAR(255),
    file_path TEXT
);
