.class public Lcom/pax/api/n;
.super Ljava/lang/Exception;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Lcom/pax/api/n;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x63

    iput v0, p0, Lcom/pax/api/n;->a:I

    iput p1, p0, Lcom/pax/api/n;->a:I

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "parameter cannot be null"

    goto :goto_0

    :sswitch_1
    const-string v0, "RPC I/O error"

    goto :goto_0

    :sswitch_2
    const-string v0, "The sending buffer is not null."

    goto :goto_0

    :sswitch_3
    const-string v0, "Invalid channel number."

    goto :goto_0

    :sswitch_4
    const-string v0, "Channel is not open and has not connected with any physical port."

    goto :goto_0

    :sswitch_5
    const-string v0, "Sending buffer error(Keep full status for 500ms)"

    goto :goto_0

    :sswitch_6
    const-string v0, "No available physical ports."

    goto :goto_0

    :sswitch_7
    const-string v0, "Device enumeration and configuration process is not complete(USBDEV dedicated)"

    goto :goto_0

    :sswitch_8
    const-string v0, "Device has been lost power and connection with the host(USBDEV dedicated)"

    goto :goto_0

    :sswitch_9
    const-string v0, "Unplug and then plug in the device from the host(USBDEV dedicated)"

    goto :goto_0

    :sswitch_a
    const-string v0, "Device is off(USBDEV dedicated)"

    goto :goto_0

    :sswitch_b
    const-string v0, "Timeout of receiving buffer data."

    goto :goto_0

    :sswitch_c
    const-string v0, "Channel is occupied by the system."

    goto :goto_0

    :sswitch_d
    const-string v0, "Invalid communication parameter. Communication parameter does not match the string rules or data outside the normal range."

    goto :goto_0

    :sswitch_e
    const-string v0, "usb to serial devices are mounted unsuccessful."

    goto :goto_0

    :sswitch_f
    const-string v0, "reset usb to serial devices error."

    goto :goto_0

    :sswitch_10
    const-string v0, "Setting baudrate, parity and stop bits of usb to serial devices error."

    goto :goto_0

    :sswitch_11
    const-string v0, "Not Support for this device"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0xff -> :sswitch_b
        -0xfe -> :sswitch_d
        -0xf0 -> :sswitch_c
        -0x13 -> :sswitch_10
        -0x12 -> :sswitch_f
        -0x11 -> :sswitch_e
        -0x10 -> :sswitch_c
        -0x2 -> :sswitch_d
        -0x1 -> :sswitch_b
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0x62 -> :sswitch_0
        0x63 -> :sswitch_1
        0x64 -> :sswitch_11
    .end sparse-switch
.end method
