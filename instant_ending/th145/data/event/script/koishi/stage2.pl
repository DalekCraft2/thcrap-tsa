#========================================================================
#	�������X�g�[���[
#	�X�e�[�W2�@VS������
#	�ꏊ�F�_�Ёi�[�j
#	�X�e�[�W�^�C�g��
#	   �u�_�_�͂����ł͖����v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/koishi.csv"
,LoadImageDef,"data/event/pic/marisa.csv"

#�t�F�C�X�摜
,DefineObject,koishi,-360,0,false
,DefineObject,marisa,-360,0,true

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

,Function,"GameStory_PlayBGM(703);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,koishi_label,50,360,false
,DefineObject,marisa_label,1120,360,false

#�����\��ݒ�
,ImageDef,koishi,������_��1,0,0
,ImageDef,marisa,������_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,marisa,-1280,&
,th145_Show,koishi,-1280,

,SetFocus,koishi		,
,ImageDef,koishi,������_�f1,0,0
����܂�L�����ᖳ����\n���ȁ[�A�����[����\,a11x2,0,0
,ClearBalloon,koishi


,SetFocus,koishi		,
,ImageDef,koishi,������_�f1,0,0
����������ƗL������\n�v���Ă�\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,koishi		,
,ImageDef,koishi,������_�{1,0,0
�˂��A������Ƃ���\n�ǂ��Ȃ�ł��H\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,marisa		,
,ImageDef,marisa,������_��2,0,0
�킠�A�N�������I\,a11x2,0,0
,ClearBalloon,marisa


,SetFocus,marisa		,
,ImageDef,marisa,������_�G1,0,0
�}�ɏo�Ă���Ȃ�\n�r�b�N������Ȃ�\,a11x2,0,0
,ClearBalloon,marisa

#�Љ�J�b�g�\���@�������́u������_�G1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,marisa
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,koishi		,
,ImageDef,koishi,������_�f1,0,0
�ŏ����狏������\n�M���̌��Ɂ[�I\,a11x2,0,0
,ClearBalloon,koishi



,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,koishi,-1280,&
,th145_Hide,marisa,-1280,

,Function,"GameStory_PlayBattleBGM(502);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End





# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,koishi,������_��1,0,0
,ImageDef,marisa,������_�]1,0,0

,th145_Show,koishi,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,marisa,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,marisa
�����[����̓d�b\n�m���Ă邯�ǂ�\,a11x2,0,0

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
,ImageDef,koishi,������_�f1,0,0
,ImageDef,marisa,������_��1,0,0

,th145_Show,koishi,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,marisa,-1280	,#�������t�F�C�X�\���J�n


,SetFocus,koishi		,
�M���̌��[�c�c\,c11x2,0,0
,ClearBalloon,koishi

,SetFocus,marisa		,
�������A���󂷂�ƃ����[�����\n�m���x���Ⴍ�ĒN���|�����Ă���\n�Ȃ��A���Č����Ă�̂�\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,koishi		,
,ImageDef,koishi,������_��1,0,0
�c�c����\,a05x2,0,0
,ClearBalloon,koishi

,SetFocus,marisa		,
,ImageDef,marisa,������_�f1,0,0
����͈Ⴄ��\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
�݂�ȓd�b�Ƃ�������\n�悭�����Ă��Ȃ�������\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,koishi		,
,ImageDef,koishi,������_��1,0,0
�n�b�I\n�����������̂�\,a11x2,0,0
,ClearBalloon,koishi







,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
