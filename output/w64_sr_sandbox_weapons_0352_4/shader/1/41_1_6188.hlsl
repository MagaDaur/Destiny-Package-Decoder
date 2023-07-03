// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:25 2023
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
  float4 cb0[119];
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
  uint v7 : SV_VERTEXID0,
  uint v8 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v7.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v7.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.z = (uint)r0.y << 1;
  r0.z = (int)-r0.z + (int)v7.x;
  r0.w = (int)r0.y * 7;
  r0.w = (int)r0.w;
  r0.w = cb0[36].x + r0.w;
  r1.xyzw = float4(5,1,3,2) + r0.wwww;
  r1.xyzw = (uint4)r1.xyzw;
  r2.xyz = t2.Load(r1.x).xyw;
  r1.x = t2.Load(r1.y).w;
  r1.z = t2.Load(r1.z).w;
  r3.xyz = t2.Load(r1.w).xyz;
  r1.w = (uint)r0.w;
  o3.xyzw = t2.Load(r1.w).xyzw;
  r4.xy = float2(6,4) + r0.ww;
  r4.xy = (uint2)r4.xy;
  r0.w = t2.Load(r4.x).x;
  r4.xyz = t2.Load(r4.y).xyz;
  r5.xyz = cb1[1].xyz * r3.yyy;
  r5.xyz = cb1[0].xyz * r3.xxx + r5.xyz;
  r5.xyz = cb1[2].xyz * r3.zzz + r5.xyz;
  r5.xyz = cb1[3].xyz + r5.xyz;
  r1.w = cmp(1 < cb0[112].x);
  if (r1.w != 0) {
    r1.w = cmp((int)r0.y < 0);
    if (r1.w != 0) {
      r1.w = cb0[36].x + 2;
      r1.w = (uint)r1.w;
      r6.xyz = t2.Load(r1.w).xyz;
    } else {
      r1.w = cb0[112].x + -1;
      r0.x = -r1.w + r0.x;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 2 + r0.x;
        r0.x = (uint)r0.x;
        r7.xyz = t2.Load(r0.x).xyz;
        r6.xyz = r3.xyz * float3(2,2,2) + -r7.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 2 + r0.x;
        r0.x = (uint)r0.x;
        r6.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r6.xyz = float3(0,0,0);
  }
  r3.xyz = cb1[1].xyz * r6.yyy;
  r3.xyz = cb1[0].xyz * r6.xxx + r3.xyz;
  r3.xyz = cb1[2].xyz * r6.zzz + r3.xyz;
  r3.xyz = cb1[3].xyz + r3.xyz;
  r3.xyz = r3.xyz + -r5.xyz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cmp(9.99999975e-006 < r0.x);
  r3.xyz = r0.xxx ? r3.xyz : float3(1,0,0);
  r0.xy = cos(r2.xy);
  r6.x = r0.x * r0.y;
  r0.x = sin(r2.x);
  r6.y = r0.x * r0.y;
  r6.z = sin(-r2.y);
  r0.x = (int)r0.z;
  r0.x = cmp(r0.x < 0.5);
  r0.y = frac(cb0[115].x);
  r0.y = r0.x ? cb0[114].x : r0.y;
  r0.y = 3.14100003 * r0.y;
  sincos(r0.y, r2.x, r7.x);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = rsqrt(r0.y);
  r3.xyz = r3.xyz * r0.yyy;
  r2.xyw = r3.xyz * r2.xxx;
  r3.xyz = r6.zxy * -r2.ywx;
  r3.xyz = r6.yzx * -r2.wxy + -r3.xyz;
  r0.y = dot(r6.xyz, -r2.xyw);
  r3.w = -r0.y;
  r6.xyz = r7.xxx * r6.xyz;
  r6.w = 0;
  r3.xyzw = r6.xyzw + r3.xyzw;
  r6.xyz = r3.yzx * r2.wxy;
  r6.xyz = r2.ywx * r3.zxy + -r6.xyz;
  r3.xyz = r7.xxx * r3.xyz + r6.xyz;
  r2.xyw = r3.www * r2.xyw + r3.xyz;
  r3.xyz = r2.xyw * r2.zzz;
  r2.xyw = r2.xyw * r2.zzz + r5.xyz;
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = rsqrt(r0.y);
  o1.xyz = r3.xyz * r0.yyy;
  r1.y = r0.x ? cb0[114].x : cb0[115].x;
  o0.xy = float2(0.150000006,1) * r1.xy;
  r3.xyzw = cb12[1].xyzw * r2.yyyy;
  r3.xyzw = cb12[0].xyzw * r2.xxxx + r3.xyzw;
  r3.xyzw = cb12[2].xyzw * r2.wwww + r3.xyzw;
  r3.xyzw = cb12[3].xyzw + r3.xyzw;
  r0.xyz = cb12[7].xyz + -r5.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = -1 + r0.x;
  r0.x = 10000 + -r0.x;
  r0.x = saturate(min(r0.y, r0.x));
  r0.x = cb0[118].x * r0.x;
  r0.y = cmp(0.999000013 < r1.z);
  o0.z = r0.y ? 0 : r0.x;
  o2.xyz = cb12[7].xyz + -r2.xyw;
  o0.w = r3.w;
  o4.xyz = r4.xyz;
  o4.w = r1.x;
  o5.xyzw = float4(0,0,0,0);
  o6.xy = float2(0,0);
  o6.z = r2.z;
  o6.w = r0.w;
  o7.xyzw = r3.xyzw;
  return;
}