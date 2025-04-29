-- Drop existing tables in reverse dependency order
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS colors;

-- Create Colors Table
CREATE TABLE colors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- Create Categories Table
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

-- Create Items Table
CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    color_id INT NOT NULL,
    description TEXT,
    quantity INT DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    image_url TEXT,
    category_id INT,
    FOREIGN KEY (color_id) REFERENCES colors(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

-- Insert Colors
INSERT INTO colors (name) VALUES 
('White'),
('Red'),
('Green'),
('Black');

-- Insert Categories
INSERT INTO categories (name, description) VALUES
('Connectors', 'Widgets used to link components.'),
('Adapters', 'Widgets that convert or adapt interfaces.'),
('Sensors', 'Widgets that detect environmental input.'),
('Casings', 'Protective housings for devices.');

-- Insert Items
INSERT INTO items (name, color_id, description, quantity, image_url, category_id) VALUES
('Doohickey', 1, 'Snap-fit connector with low-voltage tolerance.', 75, 'https://example.com/images/doohickey_white.png', 1),
('Doohickey', 2, 'Snap-fit connector with low-voltage tolerance.', 42, 'https://example.com/images/doohickey_red.png', 1),
('Whatsit', 3, 'Universal adapter for legacy ports.', 68, 'https://example.com/images/whatsit_green.png', 2),
('Whatsit', 4, 'Universal adapter for legacy ports.', 0, 'https://example.com/images/whatsit_black.png', 2),
('Sensor', 4, 'Thermal sensor with real-time feedback.', 24, 'https://example.com/images/sensor_black.png', 3),
('ShellGuard', 1, 'Protective casing for delicate internals.', 33, 'https://example.com/images/shellguard_white.png', 4),
('FlexiLink', 2, 'Flexible multi-connector with reinforced joints.', 91, 'https://example.com/images/flexilink_red.png', 1),
('FlexiLink', 3, 'Flexible multi-connector with reinforced joints.', 16, 'https://example.com/images/flexilink_green.png', 1),
('CasingShell', 4, 'Minimalist housing for compact devices.', 59, 'https://example.com/images/casingshell_black.png', 4),
('ShellGuard', 2, 'Protective casing variant with reinforced edges.', 48, 'https://example.com/images/shellguard_red.png', 4);
