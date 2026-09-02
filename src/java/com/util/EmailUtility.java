package com.util;


import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

import java.util.Properties;

public class EmailUtility {

    public static boolean sendOTP(String recipient, String otp) {

        final String sender = "siddharthvalecha319b@gmail.com";

        // Put your Gmail App Password here
        final String appPassword = "detahulqzgbluwid";

        Properties props = new Properties();

        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new jakarta.mail.Authenticator() {

                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {

                        return new PasswordAuthentication(
                                sender,
                                appPassword
                        );
                    }
                });

        try {

            Message message = new MimeMessage(session);

            message.setFrom(new InternetAddress(sender));

            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(recipient)
            );

            message.setSubject("The Shifting Hub - Password Reset OTP");

            message.setText(
                    "Your OTP for resetting your The Shifting Hub password is: "
                    + otp
                    + "\n\n"
                    + "This OTP is valid for a short time."
                    + "\n\n"
                    + "If you did not request a password reset, please ignore this email."
            );

            Transport.send(message);

            return true;

        } catch (Exception e) {

            e.printStackTrace();

            return false;
        }
    }
}