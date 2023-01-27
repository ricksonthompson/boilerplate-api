BEGIN TRY

BEGIN TRAN;

-- CreateTable
CREATE TABLE [dbo].[Kanban] (
    [id] NVARCHAR(1000) NOT NULL,
    [sequenceQr] INT NOT NULL,
    [type] VARCHAR(10) NOT NULL,
    [process] VARCHAR(3) NOT NULL,
    [product] VARCHAR(15) NOT NULL,
    [createdAt] DATETIMEOFFSET NOT NULL CONSTRAINT [Kanban_createdAt_df] DEFAULT CURRENT_TIMESTAMP,
    [updatedAt] DATETIMEOFFSET,
    CONSTRAINT [Kanban_pkey] PRIMARY KEY CLUSTERED ([id]),
    CONSTRAINT [Kanban_id_key] UNIQUE NONCLUSTERED ([id])
);

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
