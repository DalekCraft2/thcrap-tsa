#========================================================================
#	��փX�g�[���[
#	�X�e�[�W5�@VS�_�q
#	�ꏊ�F�_��_
#	�X�e�[�W�^�C�g��
#	   �u�I�J���g�{�[���̐^���v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/ichirin.csv"
,LoadImageDef,"data/event/pic/miko.csv"

#�t�F�C�X�摜
,DefineObject,ichirin,-360,0,false
,DefineObject,miko,-360,0,true

,Return
# =========================================================

# �{��
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# ���������[�`���Ăяo��

#�J�n�J�������o
,Function,GameStory_BeginCamera();
,Sleep,2,#�E�F�C�g����
,Function,"::act.fader.FadeIn(60, 0x00000000, null);"

,Function,"GameStory_PlayBGM(705);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,ichirin_label,50,360,false
,DefineObject,miko_label,1120,360,false

#�����\��ݒ�
,ImageDef,ichirin,���_��1,0,0
,ImageDef,miko,�_�q_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,ichirin,-1280,&
,th145_Show,miko,-1280	,

#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_��1,0,0
#�قق�\n���O���I�J���g�{�[����\n�W�߂Ă���悤����\,a15x3,0,0
#,ClearBalloon,miko
#
##�Љ�J�b�g�\���@�_�q�́u�_�q_��1�v����̂ݎ��s�\\,a11x2,0,0
#,th145_CharName_Cutin,miko
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#,SetFocus,ichirin		,#�������L�������w��
#,ImageDef,ichirin,���_��1,0,0
#���ɂ���čŌ�͋M�����[\n�����Ȃ�\n��΃^�`�̈���\R[�s�s�`��|�I�J���g]����A����\,a15x3,0,0
#,ClearBalloon,ichirin
#
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_�f1,0,0
#�Ƃ���ł��O\n���̃{�[�������Ȃ̂�\n�����Ă���̂��H\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,ichirin		,#�������L�������w��
#,ImageDef,ichirin,���_��1,0,0
#���W�߂�Ɗo�肪\n�J�����ł����\n�m�������̃{�[���ł�\,a15x3,0,0
#,ClearBalloon,ichirin
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_��1,0,0
#�͂��͂���\n�n���݂����ȉ\�ɖ|�M����Ă��\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_��1,0,0
#�����҂߁I\n�����͂���ȑ㕨�ł͖������I\n�W�߂����Ċo��Ȃ񂩊J���镨��\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,ichirin		,#�������L�������w��
#,ImageDef,ichirin,���_��1,0,0
#�����[�H\,a05x2,0,0
#,ClearBalloon,ichirin
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_�f1,0,0
#���͓s�s�`�������s���Ă���\n���ꂼ��̉\�̏o����\n�T��悤�ɂ���\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_��1,0,0
#����Ƃǂ�����\n�w�ǂ̓s�s�`���͐_�Ћߕӂ�\n�A�����L�߂����񂾂���\,a15x3,0,0
#,ClearBalloon,miko
#
#
#,SetFocus,ichirin		,#�������L�������w��
#,ImageDef,ichirin,���_�f1,0,0
#�����A�Ȃ�ł����H\,a11x2,0,0
#,ClearBalloon,ichirin
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_�f1,0,0
#��������s�s�`���𖳗͉�����\n���߂̑[�u���낤\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_�]2,0,0
#�\����肭������\n�댯�𖢑R�ɖh���Ƃ�����\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_�{1,0,0
#������\n�I�J���g�{�[�������͈Ⴄ\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_��1,0,0
#���ꂾ���͉\�̏o����\n�悤�Ƃ��Ē͂߂Ȃ������̂�\,a15x3,0,0
#,ClearBalloon,miko
#
#,Function,"StopBGM(3000);",# BGM��~
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_��1,0,0
#�����_�Ђɒ��荞�ނ��Ɛ���\n���ɂ��������̂�������\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,ichirin		,#�������L�������w��
#,ImageDef,ichirin,���_�f1,0,0
#�ق��ق�\,a05x2,0,0
#,ClearBalloon,ichirin
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_�f1,0,0
#�����͉e���������Ȃ�������\n�ԈႢ����\,a15x3,0,0
#,ClearBalloon,miko
#
#,Function,"GameStory_PlayBattleBGM(511);",# �퓬BGM�Đ��J�n
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_�{1,0,0
#����͊O�̐l�Ԃ��I\n���̃{�[���͊O�̐��E�̕�\n�������̂��I\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,ichirin		,#�������L�������w��
#,ImageDef,ichirin,���_��1,0,0
#�������ā[�I\,a05x2,0,0
#,ClearBalloon,ichirin
#
#,SetFocus,ichirin		,#�������L�������w��
#,ImageDef,ichirin,���_��1,0,0
#�c�c����\n���̂��炢�z���t�����\,a11x2,0,0
#,ClearBalloon,ichirin
#
#,SetFocus,ichirin		,#�������L�������w��
#,ImageDef,ichirin,���_�]1,0,0
#��̎��B���g���Ă���\n�s�s�`���͊O�̐��E�̕��΂���\n����Ȃ���\,a15x3,0,0
#,ClearBalloon,ichirin
#
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_�]1,0,0
#�ق�\n���X�ǂ����đ�������\,a11x2,0,0
#,ClearBalloon,miko
#
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_�]1,0,0
#�ƌ������Ƃ͒m���Ă���\n�W�߂Ă���Ƃ�����\,a11x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_�]2,0,0
#�ӂ��ӂ���\n�ǂ����낤\,a05x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_��1,0,0
#�s���̎��Ԃ��|���Ȃ��̂ł����\n��������Ă�낤\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,#�������L�������w��
#,ImageDef,miko,�_�q_��1,0,0
#�I�J���g�{�[���̑S�Ă��|���āI\n��ɓ��ꂽ����\n�s�K�ɂȂ邩������񂪂ȁI\,a15x3,0,0
#,ClearBalloon,miko
#
#
#
#
#
#
#
#
##���҃t�F�C�X�P��
,th145_Hide,ichirin,-1280,&
,th145_Hide,miko,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



# -----------------
# �퓬����b
:main_2

,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,ichirin,���_��1,0,0
,ImageDef,miko,�_�q_��1,0,0

,Sleep,5

#,Move,ichirin,0,-25,25	,#�t�F�C�X�摜�ʒu���g�[�N�ʒu�ɃV�t�g
,th145_Show,ichirin,-1280,&,#��փt�F�C�X�\���J�n
,th145_Show,miko,-1280,#��փt�F�C�X�\���J�n

,SetFocus,miko		,#�������L�������w��
,ImageDef,miko,�_�q_��1,0,0
,th145_Show,miko,-1280	,#&, #�_�q�t�F�C�X�\���J�n
����A\,a11x2,0,0
,ClearBalloon,miko

#�t�L�_�V�̈ꊇ�����@��������s����܂ŕ��o���͍ی��Ȃ���O�ɑ�����
,ClearBalloon,ichirin
,ClearBalloon,miko

#���҃t�F�C�X�P��
,th145_Hide,ichirin,-1280,&
,th145_Hide,miko,-1280,

,Sleep,60

,Function,"RoundStory_TalkFight();",# TODO::�΍ĊJ����

,End


# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,ichirin,���_��1,0,0
,ImageDef,miko,�_�q_�]1,0,0

,th145_Show,ichirin,-1280	,&,#��փt�F�C�X�\���J�n
,th145_Show,miko,-1280	,#��փt�F�C�X�\���J�n

,SetFocus,miko
�{�[������ɂ���̂�\n���̕�����������\,a11x2,0,0

,Function,"::StopBGM(1500);"
#�R���e�j���[�����ւ̃W�����v��\��@���݂͉��Ŏ��̃X�e�[�W�ɐi��ł����߂鏈�����s���A���X�e�[�W�̍ŏ�����ĊJ���܂�
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# ����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,ichirin,���_��1,0,0
,ImageDef,miko,�_�q_��1,0,0

,th145_Show,ichirin,-1280	,&,#��փt�F�C�X�\���J�n
,th145_Show,miko,-1280	,#��փt�F�C�X�\���J�n

,SetFocus,miko
�{��\,a11x2,0,0
,ClearBalloon,miko

,Function,"::StopBGM(1500);"
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
