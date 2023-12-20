-- CreateTable
CREATE TABLE `Prediction` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Breakfast` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `food_name` VARCHAR(191) NULL,
    `calcium` VARCHAR(191) NULL,
    `carbohydrate` VARCHAR(191) NULL,
    `fat` VARCHAR(191) NULL,
    `protein` VARCHAR(191) NULL,
    `vitamin` VARCHAR(191) NULL,
    `predictionId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Lunch` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `food_name` VARCHAR(191) NULL,
    `calcium` VARCHAR(191) NULL,
    `carbohydrate` VARCHAR(191) NULL,
    `fat` VARCHAR(191) NULL,
    `protein` VARCHAR(191) NULL,
    `vitamin` VARCHAR(191) NULL,
    `predictionId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Dinner` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `food_name` VARCHAR(191) NULL,
    `calcium` VARCHAR(191) NULL,
    `carbohydrate` VARCHAR(191) NULL,
    `fat` VARCHAR(191) NULL,
    `protein` VARCHAR(191) NULL,
    `vitamin` VARCHAR(191) NULL,
    `predictionId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Prediction` ADD CONSTRAINT `Prediction_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Breakfast` ADD CONSTRAINT `Breakfast_predictionId_fkey` FOREIGN KEY (`predictionId`) REFERENCES `Prediction`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Lunch` ADD CONSTRAINT `Lunch_predictionId_fkey` FOREIGN KEY (`predictionId`) REFERENCES `Prediction`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Dinner` ADD CONSTRAINT `Dinner_predictionId_fkey` FOREIGN KEY (`predictionId`) REFERENCES `Prediction`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
