// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:08 2023
Buffer<float4> t2 : register(t2);

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[166];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  float4 v9 : TEXCOORD9,
  float4 v10 : TEXCOORD10,
  uint v11 : SV_VERTEXID0,
  uint v12 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : TEXCOORD8,
  out float4 o9 : TEXCOORD9,
  out float4 o10 : TEXCOORD10,
  out float4 o11 : TEXCOORD11,
  out float4 o12 : TEXCOORD12,
  out float3 o13 : TEXCOORD30,
  out float4 o14 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v11.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v11.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.z = (uint)r0.y << 1;
  r0.z = (int)-r0.z + (int)v11.x;
  r0.w = (int)r0.y * 11;
  r0.zw = (int2)r0.zw;
  r0.w = cb0[67].x + r0.w;
  r1.xyzw = float4(10,1,2,3) + r0.wwww;
  r1.xyzw = (uint4)r1.xyzw;
  r2.xy = t2.Load(r1.x).xy;
  r1.x = (uint)r0.w;
  r2.z = t2.Load(r1.x).w;
  r3.xyzw = t2.Load(r1.y).xyzw;
  r1.xyz = t2.Load(r1.z).xyz;
  r4.xyz = t2.Load(r1.w).xyz;
  r5.xyzw = float4(4,6,7,8) + r0.wwww;
  r5.xyzw = (uint4)r5.xyzw;
  r6.xyzw = t2.Load(r5.x).xyzw;
  r7.xyz = t2.Load(r5.y).xyz;
  r5.xyz = t2.Load(r5.z).xyz;
  r8.xyz = t2.Load(r5.w).xyz;
  r0.w = 9 + r0.w;
  r0.w = (uint)r0.w;
  r9.xyz = t2.Load(r0.w).xyz;
  r10.xyz = cb1[1].xyz * r3.yyy;
  r10.xyz = cb1[0].xyz * r3.xxx + r10.xyz;
  r10.xyz = cb1[2].xyz * r3.zzz + r10.xyz;
  r10.xyz = cb1[3].xyz + r10.xyz;
  r0.w = cmp(1 < cb0[155].x);
  if (r0.w != 0) {
    r0.w = cmp((int)r0.y < 0);
    if (r0.w != 0) {
      r0.w = cb0[67].x + 1;
      r0.w = (uint)r0.w;
      r11.xyz = t2.Load(r0.w).xyz;
    } else {
      r0.w = cb0[155].x + -1;
      r0.x = r0.x + -r0.w;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[68].x + cb0[67].x;
        r0.x = 1 + r0.x;
        r0.x = (uint)r0.x;
        r12.xyz = t2.Load(r0.x).xyz;
        r11.xyz = r3.xyz * float3(2,2,2) + -r12.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[68].x + cb0[67].x;
        r0.x = 1 + r0.x;
        r0.x = (uint)r0.x;
        r11.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r11.xyz = float3(0,0,0);
  }
  r0.xyw = cb1[1].xyz * r11.yyy;
  r0.xyw = cb1[0].xyz * r11.xxx + r0.xyw;
  r0.xyw = cb1[2].xyz * r11.zzz + r0.xyw;
  r0.xyw = cb1[3].xyz + r0.xyw;
  r0.xyw = r0.xyw + -r10.xyz;
  r1.w = dot(r0.xyw, r0.xyw);
  r1.w = sqrt(r1.w);
  r1.w = cmp(9.99999975e-006 < r1.w);
  r0.xyw = r1.www ? r0.xyw : float3(1,0,0);
  r3.xy = cos(r2.xy);
  r11.x = r3.x * r3.y;
  r1.w = sin(r2.x);
  r11.y = r1.w * r3.y;
  r11.z = sin(-r2.y);
  r0.z = cmp(r0.z < 0.5);
  r1.w = frac(cb0[158].x);
  r1.w = r0.z ? cb0[157].x : r1.w;
  r1.w = 3.14100003 * r1.w;
  sincos(r1.w, r2.x, r3.x);
  r1.w = dot(r0.xyw, r0.xyw);
  r1.w = rsqrt(r1.w);
  r0.xyw = r1.www * r0.xyw;
  r12.xyz = r2.xxx * r0.xyw;
  r13.xyz = -r12.yzx * r11.zxy;
  r13.xyz = r11.yzx * -r12.zxy + -r13.xyz;
  r1.w = dot(r11.xyz, -r12.xyz);
  r13.w = -r1.w;
  r11.xyz = r3.xxx * r11.xyz;
  r11.w = 0;
  r11.xyzw = r13.xyzw + r11.xyzw;
  r13.xyz = r12.zxy * r11.yzx;
  r13.xyz = r12.yzx * r11.zxy + -r13.xyz;
  r3.xyz = r3.xxx * r11.xyz + r13.xyz;
  r3.xyz = r11.www * r12.xyz + r3.xyz;
  r11.xyz = r3.xyz * r6.www;
  r3.xyz = r3.xyz * r6.www + r10.xyz;
  r1.w = dot(r11.xyz, r11.xyz);
  r1.w = rsqrt(r1.w);
  r10.xyz = r11.xyz * r1.www;
  r2.w = r0.z ? cb0[157].x : cb0[158].x;
  o0.xy = float2(0.112499997,1) * r2.zw;
  r0.z = r2.z * 0.0196874999 + 0.5;
  r0.z = frac(r0.z);
  r0.z = r0.z * 2 + -1;
  r0.z = abs(r0.z) + r6.z;
  r0.z = saturate(r6.y * abs(r0.z) + r6.x);
  r0.z = 0.0500000007 * r0.z;
  r2.xyw = r0.zzz * r10.xyz + r3.xyz;
  r11.xyzw = cb12[1].xyzw * r2.yyyy;
  r11.xyzw = cb12[0].xyzw * r2.xxxx + r11.xyzw;
  r11.xyzw = cb12[2].xyzw * r2.wwww + r11.xyzw;
  r11.xyzw = cb12[3].xyzw + r11.xyzw;
  r0.z = cmp(0.999000013 < r3.w);
  o0.z = r0.z ? 0 : cb0[165].x;
  o2.xyz = cb12[7].xyz + -r2.xyw;
  o0.w = r11.w;
  o3.xyz = r1.xyz;
  o3.w = r2.z;
  o4.xyz = r4.xyz;
  o4.w = 0;
  o5.xyz = r6.xyz;
  o5.w = 0;
  o6.xyz = r7.xyz;
  o6.w = 0;
  o7.xyz = r5.xyz;
  o7.w = 0;
  o8.xyz = r8.xyz;
  o8.w = 0;
  o9.xyz = r9.xyz;
  o9.w = 0;
  o10.xyzw = float4(0,0,0,0);
  o11.xyzw = float4(0,0,0,0);
  o12.xyz = float3(0,0,0);
  o12.w = r6.w;
  o14.xyzw = r11.xyzw;
  o1.xyz = r10.xyz;
  o13.xyz = r0.xyw;
  return;
}