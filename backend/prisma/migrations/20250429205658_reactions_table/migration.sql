-- CreateTable
CREATE TABLE "reactions" (
    "id" UUID NOT NULL,
    "type" TEXT NOT NULL,
    "userId" UUID NOT NULL,
    "storyId" INTEGER NOT NULL,

    CONSTRAINT "reactions_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "reactions" ADD CONSTRAINT "reactions_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reactions" ADD CONSTRAINT "reactions_storyId_fkey" FOREIGN KEY ("storyId") REFERENCES "stories"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
