-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "login" TEXT NOT NULL,
    "telegram_id" TEXT NOT NULL,
    "spins" INTEGER NOT NULL,
    "tickets" INTEGER NOT NULL,
    "ruffker_id" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Status" (
    "id" TEXT NOT NULL,
    "label" TEXT NOT NULL,
    "ruffker_id" TEXT NOT NULL,

    CONSTRAINT "Status_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Image" (
    "id" TEXT NOT NULL,
    "label" TEXT NOT NULL,
    "path" TEXT NOT NULL,
    "ruffker_id" TEXT NOT NULL,

    CONSTRAINT "Image_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Tag" (
    "id" TEXT NOT NULL,
    "label" TEXT NOT NULL,
    "iconName" TEXT NOT NULL,
    "ruffker_id" TEXT NOT NULL,

    CONSTRAINT "Tag_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Ruffker" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "additionalInfo" TEXT NOT NULL,
    "expirationTime" TIMESTAMP(3) NOT NULL,
    "price" INTEGER NOT NULL,

    CONSTRAINT "Ruffker_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "User" ADD CONSTRAINT "User_ruffker_id_fkey" FOREIGN KEY ("ruffker_id") REFERENCES "Ruffker"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Status" ADD CONSTRAINT "Status_ruffker_id_fkey" FOREIGN KEY ("ruffker_id") REFERENCES "Ruffker"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Image" ADD CONSTRAINT "Image_ruffker_id_fkey" FOREIGN KEY ("ruffker_id") REFERENCES "Ruffker"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Tag" ADD CONSTRAINT "Tag_ruffker_id_fkey" FOREIGN KEY ("ruffker_id") REFERENCES "Ruffker"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
