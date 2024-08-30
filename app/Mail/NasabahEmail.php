<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class NasabahEmail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * The content of the email.
     *
     * @var array
     */
    public array $content;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(array $content)
    {
        $this->content = $content;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this
            ->subject('Notifikasi Approval Nasabah')
            ->view('nasabahEmail', ['content' => $this->content]);
    }
}