.class Lcom/sunrise/v/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/s/c;


# instance fields
.field private a:Lcom/sunrise/v/d;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/sunrise/v/d;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sunrise/v/e;->b:I

    iput-object p1, p0, Lcom/sunrise/v/e;->a:Lcom/sunrise/v/d;

    iput p2, p0, Lcom/sunrise/v/e;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sunrise/v/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/sunrise/v/e;->a:Lcom/sunrise/v/d;

    invoke-virtual {v0}, Lcom/sunrise/v/d;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lcom/sunrise/v/e;->a:Lcom/sunrise/v/d;

    invoke-virtual {v0}, Lcom/sunrise/v/d;->d()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v0, v1, [B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v1

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, [B

    check-cast v1, [B

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-static {v1, v3, v4}, Lcom/sunrise/v/a;->a([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/sunrise/p/d;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sunrise/v/c;->b()Ljava/text/SimpleDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, p0, Lcom/sunrise/v/e;->b:I

    if-nez v1, :cond_1

    const-string v1, "I"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sunrise/v/e;->a:Lcom/sunrise/v/d;

    invoke-virtual {v3}, Lcom/sunrise/v/d;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sunrise/v/e;->a:Lcom/sunrise/v/d;

    invoke-virtual {v3}, Lcom/sunrise/v/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v2, :cond_5

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sunrise/v/e;->b:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    const-string v1, "D"

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/sunrise/v/e;->b:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    const-string v1, "W"

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/sunrise/v/e;->b:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    const-string v1, "E"

    goto :goto_1

    :cond_4
    const-string v1, "N"

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/sunrise/p/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
