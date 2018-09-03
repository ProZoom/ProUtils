.class public Lcom/sunrise/f/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/f/ap;


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Lcom/sunrise/f/ap;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/sunrise/f/ap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunrise/f/e;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/sunrise/f/e;->b:Lcom/sunrise/f/ap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v8, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    if-nez p2, :cond_0

    sget-object v0, Lcom/sunrise/f/ba;->g:Lcom/sunrise/f/ba;

    invoke-virtual {v8, v0}, Lcom/sunrise/f/az;->b(Lcom/sunrise/f/ba;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    array-length v9, v6

    iget-object v10, p1, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    const/4 v0, 0x0

    invoke-virtual {p1, v10, p2, p3, v0}, Lcom/sunrise/f/af;->a(Lcom/sunrise/f/au;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v0, 0x5b

    :try_start_0
    invoke-virtual {v8, v0}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v9, :cond_4

    if-eqz v7, :cond_1

    const/16 v0, 0x2c

    invoke-virtual {v8, v0}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    :cond_1
    aget-object v2, v6, v7

    if-nez v2, :cond_2

    const-string v0, "null"

    invoke-virtual {v8, v0}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/f/e;->a:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sunrise/f/e;->b:Lcom/sunrise/f/ap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/sunrise/f/ap;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iput-object v10, p1, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sunrise/f/af;->a(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/sunrise/f/ap;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_2

    :cond_4
    const/16 v0, 0x5d

    invoke-virtual {v8, v0}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v10, p1, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    goto :goto_0
.end method
