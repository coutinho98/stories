-- CreateTable
CREATE TABLE "stories_parts" (
    "id" UUID NOT NULL,
    "content" TEXT NOT NULL,
    "storyId" INTEGER NOT NULL,

    CONSTRAINT "stories_parts_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "stories_parts" ADD CONSTRAINT "stories_parts_storyId_fkey" FOREIGN KEY ("storyId") REFERENCES "stories"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
