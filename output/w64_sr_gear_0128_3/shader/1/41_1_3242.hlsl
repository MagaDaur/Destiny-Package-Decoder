// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:47 2023
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
  float4 cb0[139];
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
  uint v10 : SV_VERTEXID0,
  uint v11 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float2 o8 : TEXCOORD8,
  out float4 o9 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v10.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v10.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.z = (uint)r0.y << 1;
  r0.z = (int)-r0.z + (int)v10.x;
  r0.w = (int)r0.y * 10;
  r0.w = (int)r0.w;
  r0.w = cb0[36].x + r0.w;
  r1.xyzw = float4(6,3,4,7) + r0.wwww;
  r1.xyzw = (uint4)r1.xyzw;
  r2.xyzw = t2.Load(r1.x).xyzw;
  r1.x = t2.Load(r1.y).w;
  r3.xyzw = t2.Load(r1.z).xyzw;
  r4.xyzw = t2.Load(r1.w).xyzw;
  r1.y = (uint)r0.w;
  o3.xyzw = t2.Load(r1.y).xyzw;
  r1.yzw = float3(1,8,9) + r0.www;
  r1.yzw = (uint3)r1.yzw;
  o4.xyzw = t2.Load(r1.y).xyzw;
  r5.xyzw = t2.Load(r1.z).xyzw;
  r0.w = t2.Load(r1.w).x;
  r1.yzw = cb1[1].xyz * r3.yyy;
  r1.yzw = cb1[0].xyz * r3.xxx + r1.yzw;
  r1.yzw = cb1[2].xyz * r3.zzz + r1.yzw;
  r1.yzw = cb1[3].xyz + r1.yzw;
  r6.x = cmp(1 < cb0[114].x);
  if (r6.x != 0) {
    r6.x = cmp((int)r0.y < 0);
    if (r6.x != 0) {
      r6.x = cb0[36].x + 4;
      r6.x = (uint)r6.x;
      r6.xyz = t2.Load(r6.x).xyz;
    } else {
      r6.w = cb0[114].x + -1;
      r0.x = -r6.w + r0.x;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 4 + r0.x;
        r0.x = (uint)r0.x;
        r7.xyz = t2.Load(r0.x).xyz;
        r6.xyz = r3.xyz * float3(2,2,2) + -r7.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 4 + r0.x;
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
  r3.xyz = r3.xyz + -r1.yzw;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cmp(9.99999975e-006 < r0.x);
  r3.xyz = r0.xxx ? r3.xyz : float3(1,0,0);
  r6.xyz = cb12[7].xyz + -r1.yzw;
  r0.xy = cos(r2.xy);
  r7.x = r0.x * r0.y;
  r0.x = sin(r2.x);
  r7.y = r0.x * r0.y;
  r7.z = sin(-r2.y);
  r0.x = (int)r0.z;
  r0.x = cmp(r0.x < 0.5);
  r0.y = frac(cb0[117].x);
  r0.y = r0.x ? cb0[116].x : r0.y;
  r0.y = 3.14100003 * r0.y;
  sincos(r0.y, r2.x, r8.x);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = rsqrt(r0.y);
  r3.xyz = r3.xyz * r0.yyy;
  r8.yzw = r3.xyz * r2.xxx;
  r9.xyz = -r8.zwy * r7.zxy;
  r9.xyz = r7.yzx * -r8.wyz + -r9.xyz;
  r0.y = dot(r7.xyz, -r8.yzw);
  r9.w = -r0.y;
  r7.xyz = r8.xxx * r7.xyz;
  r7.w = 0;
  r7.xyzw = r9.xyzw + r7.xyzw;
  r9.xyz = r8.wyz * r7.yzx;
  r9.xyz = r8.zwy * r7.zxy + -r9.xyz;
  r7.xyz = r8.xxx * r7.xyz + r9.xyz;
  r7.xyz = r7.www * r8.yzw + r7.xyz;
  r8.xyz = r7.xyz * r5.yyy;
  r1.yzw = r7.xyz * r5.yyy + r1.yzw;
  r0.y = dot(r6.xyz, r6.xyz);
  r0.z = rsqrt(r0.y);
  r6.xyz = r6.xyz * r0.zzz;
  r0.z = dot(r8.xyz, r8.xyz);
  r0.z = rsqrt(r0.z);
  o1.xyz = r8.xyz * r0.zzz;
  r0.z = dot(r6.xyz, r3.xyz);
  r2.x = cb0[107].x * 0.0174532942;
  r2.y = cb0[108].x + cb0[107].x;
  r2.y = 0.0174532942 * r2.y;
  r2.xy = cos(r2.xy);
  r0.z = -r2.x + abs(r0.z);
  r2.x = r2.y + -r2.x;
  r0.z = saturate(r0.z / r2.x);
  o0.y = r0.x ? cb0[116].x : cb0[117].x;
  r6.xyzw = cb12[1].xyzw * r1.zzzz;
  r6.xyzw = cb12[0].xyzw * r1.yyyy + r6.xyzw;
  r6.xyzw = cb12[2].xyzw * r1.wwww + r6.xyzw;
  r6.xyzw = cb12[3].xyzw + r6.xyzw;
  r0.x = sqrt(r0.y);
  r0.y = 0.280000001 * r4.z;
  r0.y = frac(r0.y);
  r2.x = cb0[96].x * r0.y;
  r2.x = -r2.x * cb0[106].x + cb0[106].y;
  r0.x = saturate(r0.x * cb0[106].x + r2.x);
  r0.y = cb0[102].x + -r0.y;
  r0.y = 1 + r0.y;
  r0.y = saturate(3.33333302 * r0.y);
  r0.x = r0.x * r0.y;
  r0.x = r0.x * r0.z;
  r0.x = cb0[11].x * r0.x;
  r0.x = cb0[138].x * r0.x;
  r0.y = cmp(0.999000013 < r3.w);
  o0.z = r0.y ? 0 : r0.x;
  o2.xyz = cb12[7].xyz + -r1.yzw;
  o0.w = r6.w;
  o0.x = r1.x;
  o5.xy = r2.zw;
  o5.zw = r4.xy;
  o6.xy = float2(0,0);
  o6.z = r1.x;
  o6.w = r4.w;
  o7.xzw = r5.xyz;
  o7.y = 0;
  o9.xyzw = r6.xyzw;
  o8.x = r5.w;
  o8.y = r0.w;
  return;
}